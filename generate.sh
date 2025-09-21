#!/bin/bash

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to generate OpenAPI client
generate_api() {
    echo -e "${BLUE}🔄 Starting OpenAPI client generation...${NC}"
    
    # Run the OpenAPI generator
    dart run build_runner build --build-filter="lib/open_api_generator.dart" --delete-conflicting-outputs
    
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✅ OpenAPI client generation completed successfully!${NC}"
        
        # Run pub get for the generated API package
        echo -e "${YELLOW}📦 Running pub get for API package...${NC}"
        cd api/cloud_certify_service_api
        dart pub get
        cd ../..
        
        # Run pub get for the main project
        echo -e "${YELLOW}📦 Running pub get for main project...${NC}"
        flutter pub get
        
        echo -e "${GREEN}✅ All dependencies updated successfully!${NC}"
    else
        echo -e "${RED}❌ OpenAPI client generation failed!${NC}"
        exit 1
    fi
}

# Function to generate freezed/build_runner code
generate_freezed() {
    echo -e "${BLUE}🔄 Starting freezed/build_runner code generation...${NC}"
    
    # Run build_runner for freezed, injectable, etc.
    dart run build_runner build --delete-conflicting-outputs
    
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✅ Freezed/build_runner code generation completed successfully!${NC}"
    else
        echo -e "${RED}❌ Freezed/build_runner code generation failed!${NC}"
        exit 1
    fi
}

# Function to show help
show_help() {
    echo -e "${BLUE}Cloud Certify Code Generation Script${NC}"
    echo ""
    echo "Usage: ./generate.sh [COMMAND]"
    echo ""
    echo "Commands:"
    echo "  api      Generate OpenAPI client from remote spec"
    echo "  freezed  Generate freezed/injectable code using build_runner"
    echo "  all      Run both API and freezed generation"
    echo "  help     Show this help message"
    echo ""
    echo "Examples:"
    echo "  ./generate.sh api"
    echo "  ./generate.sh freezed"
    echo "  ./generate.sh all"
}

# Main script logic
case "$1" in
    "api")
        generate_api
        ;;
    "freezed")
        generate_freezed
        ;;
    "all")
        generate_api
        echo ""
        generate_freezed
        ;;
    "help"|"--help"|"-h")
        show_help
        ;;
    "")
        echo -e "${YELLOW}⚠️  No command specified. Use './generate.sh help' for usage information.${NC}"
        show_help
        ;;
    *)
        echo -e "${RED}❌ Unknown command: $1${NC}"
        echo ""
        show_help
        exit 1
        ;;
esac